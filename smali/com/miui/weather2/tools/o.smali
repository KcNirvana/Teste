.class Lcom/miui/weather2/tools/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps2d/a$j;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/n;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/o;->a:Lcom/miui/weather2/tools/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/a/j;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/o;->a:Lcom/miui/weather2/tools/n;

    invoke-static {v0, p1}, Lcom/miui/weather2/tools/n;->a(Lcom/miui/weather2/tools/n;Lcom/amap/api/maps2d/a/j;)V

    const-string v0, "aqi_detail"

    const-string v1, "station"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
