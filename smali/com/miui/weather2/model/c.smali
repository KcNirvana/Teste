.class Lcom/miui/weather2/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/weather2/model/a;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/c;->b:Lcom/miui/weather2/model/a;

    iput-object p2, p0, Lcom/miui/weather2/model/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/model/c;->b:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/model/c;->b:Lcom/miui/weather2/model/a;

    iget-object v1, p0, Lcom/miui/weather2/model/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/c;->b:Lcom/miui/weather2/model/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/c;->b:Lcom/miui/weather2/model/a;

    invoke-static {v0}, Lcom/miui/weather2/model/a;->a(Lcom/miui/weather2/model/a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090045

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
