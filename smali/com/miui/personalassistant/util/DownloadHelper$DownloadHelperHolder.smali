.class Lcom/miui/personalassistant/util/DownloadHelper$DownloadHelperHolder;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/util/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadHelperHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/personalassistant/util/DownloadHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/util/DownloadHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/util/DownloadHelper;-><init>(Lcom/miui/personalassistant/util/DownloadHelper$1;)V

    sput-object v0, Lcom/miui/personalassistant/util/DownloadHelper$DownloadHelperHolder;->sInstance:Lcom/miui/personalassistant/util/DownloadHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/personalassistant/util/DownloadHelper;
    .locals 1

    sget-object v0, Lcom/miui/personalassistant/util/DownloadHelper$DownloadHelperHolder;->sInstance:Lcom/miui/personalassistant/util/DownloadHelper;

    return-object v0
.end method
