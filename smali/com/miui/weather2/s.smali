.class Lcom/miui/weather2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySet;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v3}, Lcom/miui/weather2/ActivitySet;->c(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v2}, Lcom/miui/weather2/ActivitySet;->d(Lcom/miui/weather2/ActivitySet;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    iget-object v1, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->e(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/s;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v2}, Lcom/miui/weather2/ActivitySet;->f(Lcom/miui/weather2/ActivitySet;)I

    move-result v2

    invoke-static {v0, v1, v2, v4}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;[Ljava/lang/String;II)V

    return-void
.end method
