.class Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;
.super Ljava/lang/Object;
.source "DevicesPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->dismiss()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanDevicesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/player/service/R$string;->lv_device_list_seaching:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->playToDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->takebackToPhone()V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;)Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->playToDevice(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method
