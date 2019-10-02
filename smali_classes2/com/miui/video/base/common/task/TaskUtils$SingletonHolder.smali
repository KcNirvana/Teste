.class Lcom/miui/video/base/common/task/TaskUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/common/task/TaskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sTaskUtils:Lcom/miui/video/base/common/task/TaskUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/base/common/task/TaskUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/TaskUtils;-><init>(Lcom/miui/video/base/common/task/TaskUtils$1;)V

    sput-object v0, Lcom/miui/video/base/common/task/TaskUtils$SingletonHolder;->sTaskUtils:Lcom/miui/video/base/common/task/TaskUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/video/base/common/task/TaskUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/base/common/task/TaskUtils$SingletonHolder;->sTaskUtils:Lcom/miui/video/base/common/task/TaskUtils;

    return-object v0
.end method
