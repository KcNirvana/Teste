.class Lcom/miui/weather2/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/structures/BrandInfo;

.field final synthetic b:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/structures/BrandInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/au;->b:Lcom/miui/weather2/ActivityWeatherMain;

    iput-object p2, p0, Lcom/miui/weather2/au;->a:Lcom/miui/weather2/structures/BrandInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/au;->b:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/au;->a:Lcom/miui/weather2/structures/BrandInfo;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/BrandInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Ljava/lang/String;)V

    return-void
.end method
