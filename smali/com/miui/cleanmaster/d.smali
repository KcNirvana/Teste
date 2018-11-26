.class final Lcom/miui/cleanmaster/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic baS:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;


# direct methods
.method constructor <init>(Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/cleanmaster/d;->baS:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/cleanmaster/d;->baS:Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;

    invoke-virtual {v0}, Lcom/miui/cleanmaster/LowMemoryIntentDispatchActivity;->finish()V

    return-void
.end method
