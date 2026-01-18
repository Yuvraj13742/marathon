import type { ApiType } from "@/app/api/[[...route]]/route";
import { hc } from "hono/client";



const BASE_URL ="https://marathon-llsu.vercel.app"

const client = hc<ApiType>(BASE_URL);


export const api = client.api;


//"https://marathon-llsu.vercel.app"//