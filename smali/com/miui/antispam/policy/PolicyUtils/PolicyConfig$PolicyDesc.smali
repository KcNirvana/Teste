.class public final enum Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum XV:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum XW:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum XX:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum XY:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum XZ:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Ya:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yb:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yc:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yd:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Ye:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yf:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yg:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yh:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yi:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yj:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yk:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yl:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Ym:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yn:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field public static final enum Yo:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

.field private static final synthetic Yp:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;


# instance fields
.field public classType:Ljava/lang/Class;

.field public interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

.field public weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v1, "EMPTY_NUMBER_POLICY"

    const-class v4, Lcom/miui/antispam/policy/EmptyNumberPolicy;

    sget-object v5, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ye:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "STRONG_CLOUD_WHITELIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/StrongCloudWhiteListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yn:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "STRONG_CLOUD_BLACKLIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/StrongCloudBlackListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ym:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "WHITELIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/WhiteListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yo:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "BLACKLIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/BlackListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XV:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "BLACK_PREFIX_POLICY"

    const-class v7, Lcom/miui/antispam/policy/BlackPrefixPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XX:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CONTACTS_POLICY"

    const-class v7, Lcom/miui/antispam/policy/ContactsPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yd:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "BLACK_ADDRESS_POLICY"

    const-class v7, Lcom/miui/antispam/policy/BlackAddressPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/4 v5, 0x7

    const/16 v6, 0x8

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XW:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "SERVICE_SMS_POLICY"

    const-class v7, Lcom/miui/antispam/policy/ServiceSmsPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x8

    const/16 v6, 0x9

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yj:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "STRANGER_POLICY"

    const-class v7, Lcom/miui/antispam/policy/StrangerPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x9

    const/16 v6, 0xa

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yl:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "OVERSEA_POLICY"

    const-class v7, Lcom/miui/antispam/policy/OverseaPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xa

    const/16 v6, 0xb

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yh:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "KEYWORDS_WHITELIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/KeywordsWhiteListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xb

    const/16 v6, 0xc

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yg:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "KEYWORDS_BLACKLIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/KeywordsBlackListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xc

    const/16 v6, 0xd

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yf:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CLOUD_WHITELIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/CloudWhiteListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xd

    const/16 v6, 0xe

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yb:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CLOUD_BLACKLIST_POLICY"

    const-class v7, Lcom/miui/antispam/policy/CloudBlackListPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XR:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xe

    const/16 v6, 0xf

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XZ:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CLOUD_WHITE_KEYWORDS_POLICY"

    const-class v7, Lcom/miui/antispam/policy/CloudWhiteKeywordsPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0xf

    const/16 v6, 0x10

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yc:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CLOUD_BLACK_KEYWORDS_POLICY"

    const-class v7, Lcom/miui/antispam/policy/CloudBlackKeywordsPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x10

    const/16 v6, 0x11

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ya:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "SMART_SMS_FILTER_POLICY"

    const-class v7, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XT:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x11

    const/16 v6, 0x12

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yk:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "CALL_TRANSFER_POLICY"

    const-class v7, Lcom/miui/antispam/policy/CallTransferPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x12

    const/16 v6, 0x13

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XY:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    new-instance v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const-string/jumbo v4, "REPORTED_NUMBER_POLICY"

    const-class v7, Lcom/miui/antispam/policy/ReportedNumberPolicy;

    sget-object v8, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;->XS:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    const/16 v5, 0x13

    const/16 v6, 0x14

    invoke-direct/range {v3 .. v8}, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;-><init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V

    sput-object v3, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yi:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ye:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yn:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ym:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yo:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    aput-object v1, v0, v11

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XV:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    aput-object v1, v0, v12

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XX:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yd:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XW:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yj:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yl:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yh:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yg:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yf:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yb:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XZ:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yc:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Ya:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yk:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->XY:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yi:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yp:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->weight:I

    iput-object p4, p0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->classType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->interceptType:Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$InterceptType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;
    .locals 1

    const-class v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    return-object v0
.end method

.method public static values()[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;
    .locals 1

    sget-object v0, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->Yp:[Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    return-object v0
.end method
