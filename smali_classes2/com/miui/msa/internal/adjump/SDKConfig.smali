.class public Lcom/miui/msa/internal/adjump/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field public static final SDK_VERSION:Lcom/miui/msa/internal/adjump/Version;

.field private static final TAG:Ljava/lang/String; = "SdkConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/msa/internal/adjump/Version;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/miui/msa/internal/adjump/Version;-><init>(III)V

    sput-object v0, Lcom/miui/msa/internal/adjump/SDKConfig;->SDK_VERSION:Lcom/miui/msa/internal/adjump/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
