.class public final enum Lcom/xiaomi/phonenum/obtain/PhoneLevel;
.super Ljava/lang/Enum;
.source "PhoneLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/phonenum/obtain/PhoneLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/phonenum/obtain/PhoneLevel;

.field public static final enum CACHE:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

.field public static final enum DATA:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

.field public static final enum LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

.field public static final enum SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;


# instance fields
.field public param:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    const-string v1, "LINE_NUMBER"

    const-string v2, "line1Number"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaomi/phonenum/obtain/PhoneLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    const-string v1, "CACHE"

    const-string v2, "cache"

    const/4 v4, 0x1

    const/16 v5, 0x1e

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaomi/phonenum/obtain/PhoneLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->CACHE:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    const-string v1, "DATA"

    const-string v2, "data"

    const/4 v5, 0x2

    const/16 v6, 0x32

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaomi/phonenum/obtain/PhoneLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->DATA:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    const-string v1, "SMS_VERIFY"

    const-string v2, ""

    const/4 v6, 0x3

    const/16 v7, 0x5a

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaomi/phonenum/obtain/PhoneLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->CACHE:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->DATA:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->$VALUES:[Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    iput-object p4, p0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->param:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/phonenum/obtain/PhoneLevel;
    .locals 1

    const-class v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/phonenum/obtain/PhoneLevel;
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->$VALUES:[Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {v0}, [Lcom/xiaomi/phonenum/obtain/PhoneLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    return-object v0
.end method
