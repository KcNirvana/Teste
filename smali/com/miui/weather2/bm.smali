.class Lcom/miui/weather2/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/bl;


# direct methods
.method constructor <init>(Lcom/miui/weather2/bl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bm;->a:Lcom/miui/weather2/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/bm;->a:Lcom/miui/weather2/bl;

    iget-object v0, v0, Lcom/miui/weather2/bl;->a:Lcom/miui/weather2/WebViewActivity;

    invoke-static {v0}, Lcom/miui/weather2/WebViewActivity;->d(Lcom/miui/weather2/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
