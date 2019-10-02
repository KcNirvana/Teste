.class Lcom/miui/video/base/utils/DataUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "DataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/utils/DataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/video/base/utils/DataUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/base/utils/DataUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/utils/DataUtils;-><init>(Lcom/miui/video/base/utils/DataUtils$1;)V

    sput-object v0, Lcom/miui/video/base/utils/DataUtils$SingletonHolder;->sInstance:Lcom/miui/video/base/utils/DataUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/video/base/utils/DataUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/base/utils/DataUtils$SingletonHolder;->sInstance:Lcom/miui/video/base/utils/DataUtils;

    return-object v0
.end method
