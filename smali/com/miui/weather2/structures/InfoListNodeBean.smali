.class public Lcom/miui/weather2/structures/InfoListNodeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Lcom/miui/weather2/structures/InfoDataBean;

.field private rowType:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/miui/weather2/structures/InfoDataBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->data:Lcom/miui/weather2/structures/InfoDataBean;

    return-object v0
.end method

.method public getRowType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->rowType:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->data:Lcom/miui/weather2/structures/InfoDataBean;

    return-void
.end method

.method public setRowType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->rowType:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->template:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoListNodeBean;->type:Ljava/lang/String;

    return-void
.end method
