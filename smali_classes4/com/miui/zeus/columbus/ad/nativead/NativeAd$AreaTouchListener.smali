.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDeviceHeight:I

.field private mDeviceWidth:I

.field private mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    if-eqz p3, :cond_0

    const-string p1, "window"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mDeviceWidth:I

    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mDeviceHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setView(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setX(F)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setY(F)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setRawX(F)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setRawY(F)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    iget p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mDeviceWidth:I

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setDw(I)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    iget p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$AreaTouchListener;->mDeviceHeight:I

    invoke-virtual {p1, p2}, Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;->setDh(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
