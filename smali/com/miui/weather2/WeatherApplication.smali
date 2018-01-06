.class public Lcom/miui/weather2/WeatherApplication;
.super Lmiui/a/a;
.source "SourceFile"


# static fields
.field public static a:Lcom/miui/weather2/WeatherApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/a/a;-><init>()V

    return-void
.end method

.method public static b()Lcom/miui/weather2/WeatherApplication;
    .locals 1

    sget-object v0, Lcom/miui/weather2/WeatherApplication;->a:Lcom/miui/weather2/WeatherApplication;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/miui/weather2/bd;
    .locals 1

    new-instance v0, Lcom/miui/weather2/bd;

    invoke-direct {v0}, Lcom/miui/weather2/bd;-><init>()V

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/a/a;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/miui/weather2/WeatherApplication;->a:Lcom/miui/weather2/WeatherApplication;

    return-void
.end method

.method public synthetic c()Lmiui/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/WeatherApplication;->a()Lcom/miui/weather2/bd;

    move-result-object v0

    return-object v0
.end method
