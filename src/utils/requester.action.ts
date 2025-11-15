import { getLogger } from "log4js";

type RequesterInfo = {
  ip?: string;
  headers?: import("http").IncomingHttpHeaders;
  originalUrl?: string;
};


// Terrible coding here, I know, it's late and this is just a project for my home use
export async function getRequesterInfo(req: any): Promise<RequesterInfo> {
    const ip = (req as any).ip;
    const headers = (req as any).headers;
    const originalUrl = (req as any).originalUrl;
    getLogger().info('Requester Info:', { ip, headers, originalUrl });
  return {
    ...(ip ? { ip: ip } : {}),
    ...(headers ? { headers: headers } : {}),
    ...(originalUrl ? { originalUrl: originalUrl } : {})
  };
}
