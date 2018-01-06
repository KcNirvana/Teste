.class Lcom/miui/weather2/ActivityWeatherMain$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/ag$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityWeatherMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityWeatherMain$f;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;Lcom/miui/weather2/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivityWeatherMain$f;-><init>(Lcom/miui/weather2/ActivityWeatherMain;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$f;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/structures/WeatherData;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityWeatherMain$f;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ActivityWeatherMain$f;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->c(Lcom/miui/weather2/ActivityWeatherMain;I)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/WeatherData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityWeatherMain$f;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/structures/WeatherData;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
