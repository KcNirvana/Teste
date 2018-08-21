.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;
.super Ljava/lang/Object;
.source "TACommands.java"


# static fields
.field public static COMMAND_FINGERPRINT_AUTH:I

.field public static COMMAND_FINGERPRINT_DEREG:I

.field public static COMMAND_FINGERPRINT_REG:I

.field public static COMMAND_GETDEVICEID:I

.field public static COMMAND_GET_TA_VERSION:I

.field public static COMMAND_GET_USERSTATUS:I

.field public static COMMAND_PREPARE_KEYPAIR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GETDEVICEID:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_FINGERPRINT_REG:I

    const/4 v0, 0x4

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_FINGERPRINT_AUTH:I

    const/16 v0, 0x8

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_FINGERPRINT_DEREG:I

    const/16 v0, 0x10

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GET_USERSTATUS:I

    const/16 v0, 0x20

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_PREPARE_KEYPAIR:I

    const/16 v0, 0x40

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/fingerprint/ta/TACommands;->COMMAND_GET_TA_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
