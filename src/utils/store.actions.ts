export async function storeLog(logData: {
  message: string
  level: "info" | "warn" | "error" | "debug"
  meta?: Record<string, any>
}): Promise<void> {
  const { LogModel } = await import("../models/log.model")

  const logEntry = new LogModel({
    message: logData.message,
    level: logData.level,
    meta: logData.meta || {},
  })
  
  await logEntry.save()
}