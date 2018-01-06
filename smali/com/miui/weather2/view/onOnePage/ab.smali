.class Lcom/miui/weather2/view/onOnePage/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/ab;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ab;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/ab;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->c(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
