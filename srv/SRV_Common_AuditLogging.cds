using SNAH.Common.AuditLogging from '../db/Schema_Common_AuditLogging';

service AuditLogger {
    @requires: 'authenticated-user'
    entity AuditLog as projection on AuditLogging.AuditLogger;
    @requires : 'authenticated-user'
    entity ErrorLog as projection on AuditLogging.errorLogger;
}
