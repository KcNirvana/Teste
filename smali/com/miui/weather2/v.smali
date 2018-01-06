.class Lcom/miui/weather2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySet;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/v;->a:Lcom/miui/weather2/ActivitySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/v;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, p2}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/weather2/v;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0, p2}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;Z)V

    const-string v1, "normal_open"

    const-string v2, "disturbless"

    if-eqz p2, :cond_0

    const-string v0, "open"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "close"

    goto :goto_0
.end method
