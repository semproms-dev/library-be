import { Schema, model, Document } from "mongoose"

export enum LogLevel {
  INFO = "info",
  WARN = "warn",
  ERROR = "error",
  DEBUG = "debug",
}

export interface ILog extends Document {
  message: string
  level: LogLevel
  timestamp: Date
  meta?: Record<string, any>
}

const LogSchema = new Schema<ILog>(
  {
    message: { type: String, required: true },
    level: { type: String, enum: Object.values(LogLevel), required: true },
    timestamp: { type: Date, default: Date.now },
    meta: { type: Schema.Types.Mixed, default: {} },
  },
  {
    timestamps: true,
  }
)

export const LogModel = model<ILog>("Log", LogSchema)

