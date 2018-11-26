.class public final enum Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field public static final enum Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field public static final enum Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field public static final enum Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field public static final enum SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

.field public static final enum Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const-string/jumbo v1, "Init"

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const-string/jumbo v1, "Receiving"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const-string/jumbo v1, "Timeout"

    invoke-direct {v0, v1, v4}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const-string/jumbo v1, "SmsSendFailure"

    invoke-direct {v0, v1, v5}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    new-instance v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const-string/jumbo v1, "Received"

    invoke-direct {v0, v1, v6}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->$VALUES:[Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->$VALUES:[Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    return-object v0
.end method
