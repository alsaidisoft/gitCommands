import { defineConfig, loadEnv } from 'vite'
import react from '@vitejs/plugin-react-swc'

// See https://vitejs.dev/config/
export default defineConfig(({mode}) => {
  // for security, filter out all non-VITE env vars
  process.env = loadEnv(mode, process.cwd(), 'VITE_')
  console.log('Filtered process.env =', process.env)

  return {
    plugins: [react()],
    server: {
      strictPort: true,
      open: true,
      port: 3000
    },
    define: {
      // for security, add only specific ones we need from the filtered list
      'process.env.VITE_STACK_NAME': JSON.stringify(process.env.VITE_STACK_NAME),
      'process.env.VITE_SERVER_ADDRESS': JSON.stringify(process.env.VITE_SERVER_ADDRESS),
      'process.env.VITE_FLYERS_ADDRESS': JSON.stringify(process.env.VITE_FLYERS_ADDRESS),
    },
    build: {
      outDir: 'build'
    }
  }
})
