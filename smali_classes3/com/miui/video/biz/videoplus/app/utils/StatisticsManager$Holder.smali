.class Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager$Holder;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager$Holder;->INSTANCE:Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    return-object v0
.end method
