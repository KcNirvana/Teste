.class public final enum Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;
.super Ljava/lang/Enum;
.source "LogTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ctemplate/log/LogTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TracerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

.field public static final enum COUNT:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

.field public static final enum EX:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

.field public static final enum PERF:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    const-string/jumbo v1, "COUNT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->COUNT:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    const-string/jumbo v1, "EX"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->EX:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    const-string/jumbo v1, "PERF"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->PERF:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    sget-object v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->COUNT:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->EX:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->PERF:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->$VALUES:[Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->$VALUES:[Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    return-object v0
.end method
