.class Lcom/miui/video/base/utils/ThemeUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/utils/ThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/video/base/utils/ThemeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/base/utils/ThemeUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/utils/ThemeUtils;-><init>(Lcom/miui/video/base/utils/ThemeUtils$1;)V

    sput-object v0, Lcom/miui/video/base/utils/ThemeUtils$SingletonHolder;->sInstance:Lcom/miui/video/base/utils/ThemeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/video/base/utils/ThemeUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/base/utils/ThemeUtils$SingletonHolder;->sInstance:Lcom/miui/video/base/utils/ThemeUtils;

    return-object v0
.end method
