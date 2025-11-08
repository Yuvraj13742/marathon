import type { ApiType } from "@/app/api/[[...route]]/route";
import { hc } from "hono/client";



const BASE_URL = process.env.NODE_ENV === "production"
    ? "https://marathon-16-website.vercel.app"
    : "http://localhost:3000";
const client = hc<ApiType>(BASE_URL);


export const api = client.api;