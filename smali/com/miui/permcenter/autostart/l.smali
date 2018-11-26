.class final Lcom/miui/permcenter/autostart/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/l;->OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/autostart/l;->OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pp(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Lcom/miui/permcenter/autostart/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/autostart/l;->OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v1}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pq(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/permcenter/autostart/l;->OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v2}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Po(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/permcenter/autostart/a;->updateData(IZ)V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/l;->OD:Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;->Pp(Lcom/miui/permcenter/autostart/AutoStartDetailManagementActivity;)Lcom/miui/permcenter/autostart/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/a;->notifyDataSetChanged()V

    return-void
.end method
