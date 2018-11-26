.class final Lcom/miui/d/h;
.super Lcom/miui/d/g;
.source ""


# direct methods
.method constructor <init>(Lcom/miui/d/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/d/g;-><init>(Lcom/miui/d/d;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic bBw(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/d/h;->bBy(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bBx(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method bBy(Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/miui/systemAdSolution/common/EnumPracle;

    sget-object v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->SET_RECOMMAND_AD_SWITCH_STATE:Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    invoke-direct {v1, v0}, Lcom/miui/systemAdSolution/common/EnumPracle;-><init>(Ljava/lang/Enum;)V

    const-string/jumbo v2, "RemoteUnifiedAdService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exe command.the command type is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/EnumPracle;->getValue()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;

    invoke-virtual {v0}, Lcom/xiaomi/ad/entity/unified/UnifiedAdCommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";the arags is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1, p2}, Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;->exec(Lcom/miui/systemAdSolution/common/EnumPracle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
