.class Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$Holder;
.super Ljava/lang/Object;
.source "VideoQueryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$1;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
