.class Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$4;
.super Landroid/text/style/ClickableSpan;
.source "MiotDeviceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->showCTAView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v2, "https://home.mi.com/userprotocol/\u7c73\u5bb6\u9690\u79c1\u653f\u7b560326.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "com.android.browser"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
