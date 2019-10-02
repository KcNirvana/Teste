.class Lcom/miui/video/base/statistics/StatisticsUtils2$SingletonHolder;
.super Ljava/lang/Object;
.source "StatisticsUtils2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/StatisticsUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/miui/video/base/statistics/StatisticsUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsUtils2;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;-><init>()V

    sput-object v0, Lcom/miui/video/base/statistics/StatisticsUtils2$SingletonHolder;->sInstance:Lcom/miui/video/base/statistics/StatisticsUtils2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
