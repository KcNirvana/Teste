.class Lcom/miui/weather2/tools/x;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/w;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/w;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/x;->a:Lcom/miui/weather2/tools/w;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/x;->a:Lcom/miui/weather2/tools/w;

    invoke-static {v0}, Lcom/miui/weather2/tools/w;->a(Lcom/miui/weather2/tools/w;)Lcom/miui/weather2/tools/w$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/miui/weather2/tools/w$a;->a(Landroid/net/Uri;)V

    return-void
.end method
