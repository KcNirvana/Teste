.class Lcom/miui/weather2/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ai;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ai;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->i(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/ai;->a:Lcom/miui/weather2/ActivitySetCity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
