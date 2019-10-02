.class Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$1;
.super Ljava/lang/Object;
.source "DevicesPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/presenter/AirkanPresenter;)V
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->dismiss()V

    return-void
.end method
