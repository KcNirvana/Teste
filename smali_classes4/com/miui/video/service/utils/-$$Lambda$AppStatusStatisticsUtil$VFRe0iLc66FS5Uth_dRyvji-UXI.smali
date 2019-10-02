.class public final synthetic Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$VFRe0iLc66FS5Uth_dRyvji-UXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$VFRe0iLc66FS5Uth_dRyvji-UXI;->f$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/utils/-$$Lambda$AppStatusStatisticsUtil$VFRe0iLc66FS5Uth_dRyvji-UXI;->f$0:Lcom/miui/video/service/utils/AppStatusStatisticsUtil;

    invoke-static {v0}, Lcom/miui/video/service/utils/AppStatusStatisticsUtil;->lambda$updateLastLocalResumeTime$19(Lcom/miui/video/service/utils/AppStatusStatisticsUtil;)V

    return-void
.end method
