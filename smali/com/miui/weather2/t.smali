.class Lcom/miui/weather2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySet;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/t;->a:Lcom/miui/weather2/ActivitySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/t;->a:Lcom/miui/weather2/ActivitySet;

    iget-object v1, p0, Lcom/miui/weather2/t;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->g(Lcom/miui/weather2/ActivitySet;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/t;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v2}, Lcom/miui/weather2/ActivitySet;->h(Lcom/miui/weather2/ActivitySet;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;[Ljava/lang/String;II)V

    return-void
.end method
