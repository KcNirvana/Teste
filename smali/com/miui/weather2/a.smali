.class Lcom/miui/weather2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityAlertDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityAlertDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityAlertDetail;->finish()V

    return-void
.end method
