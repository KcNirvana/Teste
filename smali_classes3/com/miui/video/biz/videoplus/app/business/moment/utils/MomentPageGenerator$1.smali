.class final Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$1;
.super Ljava/lang/Object;
.source "MomentPageGenerator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->sort(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;)I
    .locals 6

    iget-wide v0, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    :goto_0
    iput-wide v0, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    iget-wide v4, p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-wide v2, p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    :goto_1
    iput-wide v2, p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    sub-long/2addr v2, v0

    long-to-int p1, v2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$1;->compare(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;)I

    move-result p1

    return p1
.end method
