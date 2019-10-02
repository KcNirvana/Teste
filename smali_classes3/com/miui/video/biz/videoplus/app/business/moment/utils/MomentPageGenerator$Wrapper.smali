.class Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;
.super Ljava/lang/Object;
.source "MomentPageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wrapper"
.end annotation


# instance fields
.field count:J

.field name:Ljava/lang/String;

.field provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    return-void
.end method
