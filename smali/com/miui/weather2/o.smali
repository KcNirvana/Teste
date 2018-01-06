.class Lcom/miui/weather2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityFindCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityFindCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/o;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/o;->a:Lcom/miui/weather2/ActivityFindCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivityFindCity;->c(Lcom/miui/weather2/ActivityFindCity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
