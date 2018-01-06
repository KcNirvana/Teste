.class Lcom/miui/weather2/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/view/WeatherDynamicListView$b;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ae;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ae;->a:Lcom/miui/weather2/ActivitySetCity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivitySetCity;->c(Lcom/miui/weather2/ActivitySetCity;Z)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ae;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->f(Lcom/miui/weather2/ActivitySetCity;)Lcom/miui/weather2/model/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/weather2/model/g;->a(II)V

    iget-object v0, p0, Lcom/miui/weather2/ae;->a:Lcom/miui/weather2/ActivitySetCity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivitySetCity;->b(Lcom/miui/weather2/ActivitySetCity;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ae;->a:Lcom/miui/weather2/ActivitySetCity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivitySetCity;->c(Lcom/miui/weather2/ActivitySetCity;Z)V

    return-void
.end method
