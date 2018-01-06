.class Lcom/miui/weather2/view/onOnePage/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/q;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/q;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/q;->a:Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/ImageAdvertisment;->a()V

    return-void
.end method
