.class Lcom/miui/video/service/update/AppUpdateUtils$Holder;
.super Ljava/lang/Object;
.source "AppUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/update/AppUpdateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static volatile instance:Lcom/miui/video/service/update/AppUpdateUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/service/update/AppUpdateUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/service/update/AppUpdateUtils;-><init>(Lcom/miui/video/service/update/AppUpdateUtils$1;)V

    sput-object v0, Lcom/miui/video/service/update/AppUpdateUtils$Holder;->instance:Lcom/miui/video/service/update/AppUpdateUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/video/service/update/AppUpdateUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/service/update/AppUpdateUtils$Holder;->instance:Lcom/miui/video/service/update/AppUpdateUtils;

    return-object v0
.end method
