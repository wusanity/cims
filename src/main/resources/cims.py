import pymysql
import matplotlib.pylab as pyl
import sys

def dataAnalysis(cid,schoolYear,semester) :

    host = '127.0.0.1'
    user = 'root'
    password = 'root123'
    database = 'cims'
    port = 3306

    mysql = pymysql.connect(host=host,user = user,password=password,database=database,port=port)

    sql1 = "SELECT score,school_year,semester FROM tb_class_score_info WHERE cid = '" + cid +"' ORDER BY school_year,semester"

    sql2 = "SELECT b.indicator_name,a.score FROM tb_first_index_score a,tb_evaluation_template b WHERE a.first_indicator_id = b.indicator_id and school_year = '" + schoolYear + "' and semester = " + str(semester)

    print(sql2)
    cursor1 = mysql.cursor()
    cursor1.execute(sql1)
    #得到一个元组，元组中有两条数据，第一条为学年，第二条为学期
    result1 = cursor1.fetchall()
    cursor1.close()

    cursor2 = mysql.cursor()
    cursor2.execute(sql2)
    # 得到一个元组，元组中有两条数据，第一条为学年，第二条为学期
    result2 = cursor2.fetchall()
    cursor2.close()

    x1 = []
    y1 = []
    for i in range(len(result1)) :
        y1.append(result1[i][0])
        x1.append(result1[i][1] + '-' + str(result1[i][2]))
    x2 = []
    y2 = []
    for j in range(len(result2)) :
        x2.append(result2[j][0])
        y2.append(result2[j][1])

    mysql.close()
    #解决乱码问题
    pyl.rcParams['font.sans-serif'] = ['KaiTi']  # 指定默认字体
    pyl.rcParams['axes.unicode_minus'] = False
    pyl.subplot(1,2,1)#行，列，当前区域
    pyl.title('历史对比')
    pyl.xlabel('时间')
    pyl.ylabel('得分')
    pyl.plot(x1,y1)
    pyl.gcf().autofmt_xdate()
    pyl.subplot(1,2,2)
    pyl.title("指标得分")
    pyl.xlabel("指标名称")
    pyl.ylabel("得分")
    pyl.bar(x2,y2,align='center')
    pyl.show()

if __name__ == '__main__':
    dataAnalysis(sys.argv[1],sys.argv[2],sys.argv[3])