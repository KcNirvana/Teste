.class Lcom/miui/weather2/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/aq;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/aq;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;Z)V

    return-void
.end method
