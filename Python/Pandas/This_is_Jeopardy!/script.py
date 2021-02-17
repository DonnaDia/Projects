import pandas as pd
pd.set_option('display.max_colwidth', -1)

jeopardy = pd.read_csv('./jeopardy.csv')

jeopardy.rename(columns = {
  ' Air Date' : 'Air Date',
  ' Round' : 'Round',
  ' Category' : 'Category',
  ' Value' : 'Value',
  ' Question' : 'Question',
  ' Answer' : 'Answer'  
  },
  inplace = True)

def filtered_data(data, words):
    filter = lambda x: all(word.lower() in x.lower() for word in words)
    return data.loc[data['Question'].apply(filter)]

filtered = filtered_data(jeopardy, ["King", "England"])
print(filtered)

jeopardy['Value'] = jeopardy['Value'].apply(lambda x: float(x[1:].replace(',','')) if x != "None" else 0)


print(jeopardy.head())

filtered = filtered_data(jeopardy, ["King"])
print(filtered['Value'].mean())

def answer_counts(data):
    return data['Answer'].value_counts()

print(answer_counts(filtered))



