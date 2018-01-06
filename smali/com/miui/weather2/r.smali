.class Lcom/miui/weather2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySet;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/r;->a:Lcom/miui/weather2/ActivitySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/r;->a:Lcom/miui/weather2/ActivitySet;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivitySet;->finish()V

    return-void
.end method
