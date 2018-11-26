.class public final enum Lcom/miui/sdk/tc/TcManager$ReturnCode;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

.field public static final enum OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorInvalidParams"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorInvalidPackageName"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorInvalidSlotNum"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorCreateFileFailed"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorNotInited"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorUpdating"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorUpdateFailed"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorJavaException"

    const/16 v2, 0x8

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "ErrorParseError"

    const/16 v2, 0x9

    const/16 v3, -0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    new-instance v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const-string/jumbo v1, "Error"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/miui/sdk/tc/TcManager$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/miui/sdk/tc/TcManager$ReturnCode;

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->$VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

    return-void
.end method

.method public static parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->Error:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidParams:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidPackageName:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorInvalidSlotNum:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorCreateFileFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorNotInited:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdating:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorUpdateFailed:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorJavaException:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->ErrorParseError:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    const-class v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0
.end method

.method public static values()[Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    sget-object v0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->$VALUES:[Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/sdk/tc/TcManager$ReturnCode;->mValue:I

    return v0
.end method
