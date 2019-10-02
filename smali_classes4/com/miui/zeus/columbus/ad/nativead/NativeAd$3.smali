.class Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

.field final synthetic val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;


# direct methods
.method constructor <init>(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iput-object p2, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-virtual {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {p1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$300(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/nativead/AdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-interface {p1, v0}, Lcom/miui/zeus/columbus/ad/nativead/AdListener;->onAdClicked(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V

    iget-object p1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->this$0:Lcom/miui/zeus/columbus/ad/nativead/NativeAd;

    invoke-static {v0}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$500(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/zeus/columbus/ad/nativead/NativeAd$3;->val$clickAreaInfo:Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;

    invoke-static {p1, v0, v1}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->access$600(Lcom/miui/zeus/columbus/ad/nativead/NativeAd;Lcom/miui/zeus/columbus/ad/enity/NativeAdInfo;Lcom/miui/zeus/columbus/ad/enity/ClickAreaInfo;)V

    const-string p1, "NativeAd"

    const-string v0, "AD on click"

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/util/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
