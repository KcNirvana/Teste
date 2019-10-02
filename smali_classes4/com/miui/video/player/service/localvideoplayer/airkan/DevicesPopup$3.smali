.class Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;
.super Ljava/lang/Object;
.source "DevicesPopup.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$200(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->setGroup(Ljava/util/List;)V

    return-void
.end method

.method public onDeviceRemoved(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$200(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->setGroup(Ljava/util/List;)V

    return-void
.end method

.method public onOpened()V
    .locals 0

    return-void
.end method
