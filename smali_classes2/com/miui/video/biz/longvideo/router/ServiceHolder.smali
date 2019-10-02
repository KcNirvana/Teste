.class public Lcom/miui/video/biz/longvideo/router/ServiceHolder;
.super Ljava/lang/Object;
.source "ServiceHolder.java"


# static fields
.field public static sHistoryService:Lcom/miui/video/base/routers/personal/history/HistoryService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/video/base/routers/personal/history/HistoryService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/personal/history/HistoryService;

    sput-object v0, Lcom/miui/video/biz/longvideo/router/ServiceHolder;->sHistoryService:Lcom/miui/video/base/routers/personal/history/HistoryService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHistoryService()Lcom/miui/video/base/routers/personal/history/HistoryService;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/longvideo/router/ServiceHolder;->sHistoryService:Lcom/miui/video/base/routers/personal/history/HistoryService;

    return-object v0
.end method
