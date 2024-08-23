namespace SNAH.Common.AuditLogging;

type BusinessKey : String(16);

entity AuditLogger {
    key keyuuid1    : String(40)
        @Core.Description: 'Audit Log Key1';
    key keyuuid2    : String(40)
        @Core.Description: 'Audit Log Key2';
    key keyuuid3    : String(40)
        @Core.Description: 'Audit Log Key3';
        transactid  : String(40)
        @Core.Description: 'Custom transaction Id';
        // srcartifact : LargeString
        // @Core.Description: 'Artifact that generated the logged event';
        payload     : LargeString
        @Core.Description: 'Artifact that generated the logged event';
        pkgname     : String(100)
        @Core.Description: 'Subaccount package name';
        iflow       : String(100)
        @Core.Description: 'IFlow that generated the logged event';
        mplid       : String(36)
        @Core.Description: 'mplid';
        timeupdated : DateTime
        @Core.Description: 'Date and time last updated';
        id          : UUID
        @Core.Description: 'System-provided unique Id';
}

entity errorLogger {
    key keyuuid1     : UUID;
        srcartifact  : String(100)
        @Core.Description: 'Artifact that generated the logged event';
        pkgname      : String(100)
        @Core.Description: 'Subaccount package name';
        iflow        : String(100)
        @Core.Description: 'IFlow that generated the logged event';
        mplid        : String(36)
        @Core.Description: 'mplid';
        errorprocess : String(32)
        @Core.Description: 'Logic process that was running when error occurred';
        errorsubject : String(64)
        @Core.Description: 'subject of the error';
        errormessage : String(1024);
        timeupdated  : DateTime
        @Core.Description: 'Date and time last updated';
}
