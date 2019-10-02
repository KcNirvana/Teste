.class Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$Holder;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$1;)V

    sput-object v0, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
