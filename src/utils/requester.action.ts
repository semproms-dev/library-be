import { getLogger } from "log4js";
import { Request } from 'express';

type RequesterInfo = {
  ip?: string;
  headers?: import("http").IncomingHttpHeaders;
  originalUrl?: string;
};


// Terrible coding here, I know, it's late and this is just a project for my home use
export async function getRequesterInfo(req: Request): Promise<RequesterInfo> {
  return {
    ...(req.ip ? { ip: req.ip } : {}),
    ...(req.headers ? { headers: req.headers } : {}),
    ...(req.originalUrl ? { originalUrl: req.originalUrl } : {})
  };
}
