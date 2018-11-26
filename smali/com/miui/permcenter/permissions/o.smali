.class final Lcom/miui/permcenter/permissions/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic PD:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

.field final synthetic PE:J

.field final synthetic PF:Ljava/lang/String;

.field final synthetic PG:Ljava/lang/Integer;

.field final synthetic PH:Lcom/miui/permission/PermissionInfo;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;JLjava/lang/String;Ljava/lang/Integer;Lcom/miui/permission/PermissionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/o;->PD:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    iput-wide p2, p0, Lcom/miui/permcenter/permissions/o;->PE:J

    iput-object p4, p0, Lcom/miui/permcenter/permissions/o;->PF:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/permcenter/permissions/o;->PG:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/miui/permcenter/permissions/o;->PH:Lcom/miui/permission/PermissionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/o;->PD:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/o;->PD:Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;->PQ(Lcom/miui/permcenter/permissions/PermissionsEditorActivity;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/o;->PE:J

    iget-object v4, p0, Lcom/miui/permcenter/permissions/o;->PF:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/permcenter/permissions/o;->PG:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/miui/permcenter/permissions/o;->PH:Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v6}, Lcom/miui/permission/PermissionInfo;->bBX()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_0

    move v7, v8

    :cond_0
    move-object v6, v0

    invoke-static/range {v0 .. v7}, Lcom/miui/permcenter/e;->SL(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;ILcom/miui/permcenter/f;Z)V

    return v8
.end method
